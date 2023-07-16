package its.darioniero.trainsdelay.entities;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "journeys")
public class Journey {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "journey_id")
    private Long journeyId;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "train_id")
    private Train train;


    @Column(name = "date")
    private Date date;

    @Column(name = "true_departure")
    private Date trueDeparture;

    @Column(name = "true_arrival")
    private Date trueArrival;

    @Column(name = "comments")
    private String comments;
}
