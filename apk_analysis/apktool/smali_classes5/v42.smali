.class public final Lv42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt42;


# instance fields
.field public final a:Lh42;

.field public final b:Lz32;


# direct methods
.method public constructor <init>(Lh42;Lz32;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv42;->a:Lh42;

    iput-object p2, p0, Lv42;->b:Lz32;

    return-void
.end method


# virtual methods
.method public final a(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lvl2;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv42;->a:Lh42;

    invoke-interface {p0, p1, p2}, Lh42;->a(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final b(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ln32;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv42;->a:Lh42;

    invoke-interface {p0, p1, p2}, Lh42;->b(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final c(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Ln32;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv42;->a:Lh42;

    invoke-interface {p0, p1, p2}, Lh42;->c(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final d(J)Lmz7;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lmz7<",
            "Lb42;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lv42;->a:Lh42;

    invoke-interface {p0, p1, p2}, Lh42;->d(J)Lmz7;

    move-result-object p0

    return-object p0
.end method

.method public final e(IJ)Lp08;
    .locals 1

    const/16 v0, 0xa

    iget-object p0, p0, Lv42;->a:Lh42;

    invoke-interface {p0, p2, p3, p1, v0}, Lh42;->e(JII)Lmz7;

    move-result-object p0

    new-instance p1, Ljv;

    const/4 p2, 0x2

    sget-object p3, Lu42;->f:Lu42;

    invoke-direct {p1, p3, p2}, Ljv;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp08;

    invoke-direct {p2, p0, p1}, Lp08;-><init>(Lmz7;Lxl3;)V

    return-object p2
.end method

.method public final f(Lh63;)Lqp1;
    .locals 0

    iget-object p0, p0, Lv42;->a:Lh42;

    invoke-interface {p0, p1}, Lh42;->f(Lh63;)Lqp1;

    move-result-object p0

    return-object p0
.end method
