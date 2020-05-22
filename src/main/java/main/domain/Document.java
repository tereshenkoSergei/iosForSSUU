package main.domain;

import javax.persistence.*;

@Entity
@Table(name = "document_files")
public class Document {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    private String documentName;
    private String address;

    @ManyToOne
    @JoinColumn (name="discipline_id")
    private Discipline discipline;
}
