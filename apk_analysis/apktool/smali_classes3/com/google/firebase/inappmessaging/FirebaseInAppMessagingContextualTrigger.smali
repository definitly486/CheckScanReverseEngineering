.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingContextualTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final triggerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingContextualTrigger;->triggerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTriggerName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingContextualTrigger;->triggerName:Ljava/lang/String;

    return-object p0
.end method
