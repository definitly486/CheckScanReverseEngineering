.class public final synthetic Lcom/google/firebase/remoteconfig/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/a;->b:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/remoteconfig/a;->b:Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigKt$configUpdates$1;->g(Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;)Lj59;

    move-result-object p0

    return-object p0
.end method
