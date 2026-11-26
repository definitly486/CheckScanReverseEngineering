.class public final Lj1a;
.super Ljia;
.source "SourceFile"


# instance fields
.field public final X:Lj4a;

.field public final Y:Lk6a;

.field public final Z:Lev9;

.field public a0:Ly8a;


# direct methods
.method public constructor <init>(Lpp9;)V
    .locals 2

    invoke-direct {p0, p1}, Ljia;-><init>(Lpp9;)V

    new-instance p1, Lj4a;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lu1;-><init>(IB)V

    iput-object p1, p0, Lj1a;->X:Lj4a;

    new-instance p1, Lk6a;

    invoke-direct {p1, v0, v1}, Lu1;-><init>(IB)V

    const-string v0, ""

    iput-object v0, p1, Lk6a;->e:Ljava/lang/String;

    iput-object p1, p0, Lj1a;->Y:Lk6a;

    invoke-static {}, Lev9;->a()Lev9;

    move-result-object p1

    iput-object p1, p0, Lj1a;->Z:Lev9;

    return-void
.end method
