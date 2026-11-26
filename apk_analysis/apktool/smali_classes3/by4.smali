.class public Lby4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lrx4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx4<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lbz7;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrx4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lby4;->a:Lrx4;

    const/4 v0, 0x0

    iput-object v0, p0, Lby4;->b:Lbz7;

    return-void
.end method

.method public constructor <init>(Lbz7;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lrx4;

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lby4;->a:Lrx4;

    .line 18
    iput-object p1, p0, Lby4;->b:Lbz7;

    return-void
.end method


# virtual methods
.method public a(Lrx4;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx4<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lby4;->b:Lbz7;

    return-object p0
.end method

.method public final b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    iget-object v0, p0, Lby4;->a:Lrx4;

    iput p1, v0, Lrx4;->a:F

    iput p2, v0, Lrx4;->b:F

    iput-object p3, v0, Lrx4;->c:Ljava/lang/Object;

    iput-object p4, v0, Lrx4;->d:Ljava/lang/Object;

    iput p5, v0, Lrx4;->e:F

    iput p6, v0, Lrx4;->f:F

    iput p7, v0, Lrx4;->g:F

    invoke-virtual {p0, v0}, Lby4;->a(Lrx4;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
