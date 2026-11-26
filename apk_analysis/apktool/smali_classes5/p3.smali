.class public final synthetic Lp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6;


# instance fields
.field public final synthetic a:Lc4;


# direct methods
.method public synthetic constructor <init>(Lc4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3;->a:Lc4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lp3;->a:Lc4;

    iget-object v0, p0, Lc4;->k:Ln60;

    invoke-interface {v0}, Ln60;->u()V

    iget-object p0, p0, Lc4;->a:Ljf6;

    const-string v0, ""

    invoke-interface {p0, v0}, Ljf6;->k1(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lix8;->X0(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljf6;->J(Z)V

    invoke-interface {p0, v1}, Ljf6;->E(I)V

    invoke-interface {p0, v0}, Ljf6;->D0(Ljava/lang/String;)V

    const-string v1, "null"

    invoke-interface {p0, v1}, Ljf6;->g1(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljf6;->a1(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljf6;->H(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljf6;->y(Ljava/lang/String;)V

    return-void
.end method
