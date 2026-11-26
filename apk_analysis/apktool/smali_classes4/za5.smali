.class public final synthetic Lza5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lza5;->b:Ljava/lang/Object;

    iput-object p2, p0, Lza5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lza5;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object p0, p0, Lza5;->c:Ljava/lang/Object;

    check-cast p0, Lyads/ub0;

    check-cast p1, Lyads/pe;

    invoke-static {v0, p0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/ub0;Lyads/pe;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lza5;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;

    iget-object p0, p0, Lza5;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/firebase/inappmessaging/model/InAppMessage;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;->d(Lcom/google/firebase/inappmessaging/internal/MetricsLoggerClient;Lcom/google/firebase/inappmessaging/model/InAppMessage;Ljava/lang/String;)V

    return-void
.end method
