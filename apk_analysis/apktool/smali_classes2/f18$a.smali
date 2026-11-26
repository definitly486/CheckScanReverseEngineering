.class public final Lf18$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf18;->a(Ls08;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lf18;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf18<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Ls08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls08<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf18;Ls08;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf18<",
            "TT;>;",
            "Ls08<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lf18$a;->f:Lf18;

    iput-object p2, p0, Lf18$a;->g:Ls08;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf18$a;->f:Lf18;

    iget-object v0, v0, Lf18;->a:Llz7;

    iget-object p0, p0, Lf18$a;->g:Ls08;

    invoke-virtual {v0, p0}, Llz7;->a(Ls08;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
