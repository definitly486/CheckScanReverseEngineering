.class public final synthetic Lci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lli0;
.implements Lxl3;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lyads/nt;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lci;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 0

    iget-object p0, p0, Lci;->b:Ljava/lang/Object;

    check-cast p0, Lyads/ky2;

    invoke-virtual {p0, p1, p2}, Lyads/ky2;->a(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lci;->b:Ljava/lang/Object;

    check-cast p0, Lnl3;

    .line 11
    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lci;->b:Ljava/lang/Object;

    check-cast p0, Lbm3;

    invoke-interface {p0, p1, p2}, Lbm3;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb36;

    return-object p0
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lci;->b:Ljava/lang/Object;

    check-cast p0, Lju4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lju4;->e()V

    return-void
.end method
