.class public final Lcom/google/firebase/inappmessaging/InAppMessagingKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final getInAppMessaging(Lcom/google/firebase/Firebase;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;->getInstance()Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
