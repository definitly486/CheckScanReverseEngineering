.class public final synthetic Lbb3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# instance fields
.field public final synthetic a:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbb3;->a:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbb3;->a:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->a(Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;Lcom/google/firebase/components/ComponentContainer;)Lcom/google/firebase/inappmessaging/FirebaseInAppMessaging;

    move-result-object p0

    return-object p0
.end method
