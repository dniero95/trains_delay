package its.darioniero.trainsdelay.entities;


import its.darioniero.trainsdelay.enums.DA;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "trains")
public class Train {

    //    treno( numtreno, orapartenza, oraarrivo, AR )
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "train_id")
    private Long trainId;

    @Column(name = "departure_time")
    private Date departureTime;

    @Column(name = "arrival_time")
    private Date arrivalTime;

    @Column(name = "departure_arrival")
    private DA da;




}
