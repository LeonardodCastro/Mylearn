package com.leonardodcastro.mylearn.entities.pk;

import com.leonardodcastro.mylearn.entities.Offer;
import com.leonardodcastro.mylearn.entities.User;
import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import java.util.Objects;

@Embeddable
public class EnrollmentPK {


    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;
    @ManyToOne
    @JoinColumn(name = "offer_id")
    private Offer offer;

    public EnrollmentPK() {
    }

    public EnrollmentPK(User user, Offer offer) {
        this.user = user;
        this.offer = offer;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Offer getOffer() {
        return offer;
    }

    public void setOffer(Offer offer) {
        this.offer = offer;
    }

    @Override
    public boolean equals(Object object) {
        if (object == null || getClass() != object.getClass()) return false;

        EnrollmentPK that = (EnrollmentPK) object;
        return Objects.equals(user, that.user) && Objects.equals(offer, that.offer);
    }

    @Override
    public int hashCode() {
        int result = Objects.hashCode(user);
        result = 31 * result + Objects.hashCode(offer);
        return result;
    }
}
