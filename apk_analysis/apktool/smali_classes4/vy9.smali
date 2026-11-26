.class public final Lvy9;
.super Ljia;
.source "SourceFile"


# instance fields
.field public final X:Ljava/util/ArrayList;

.field public final Y:Ljava/util/ArrayList;

.field public Z:Lh14;

.field public a0:Lh14;


# direct methods
.method public constructor <init>(Lpp9;)V
    .locals 0

    invoke-direct {p0, p1}, Ljia;-><init>(Lpp9;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lvy9;->X:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lvy9;->Y:Ljava/util/ArrayList;

    return-void
.end method
