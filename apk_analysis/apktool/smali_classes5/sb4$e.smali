.class public final Lsb4$e;
.super Lrb4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsb4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final f:Lbm7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbm7<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lsb4;


# direct methods
.method public constructor <init>(Lsb4;Lbm7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbm7<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lsb4$e;->g:Lsb4;

    invoke-direct {p0}, Lrb4;-><init>()V

    iput-object p2, p0, Lsb4$e;->f:Lbm7;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lsb4$e;->g:Lsb4;

    sget-object v0, Lj59;->a:Lj59;

    iget-object p0, p0, Lsb4$e;->f:Lbm7;

    invoke-interface {p0, p1, v0}, Lbm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
