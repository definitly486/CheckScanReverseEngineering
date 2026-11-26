.class public final Lyads/f90;
.super Lb0;
.source "SourceFile"

# interfaces
.implements Ls22;


# instance fields
.field public final synthetic b:Lnl3;


# direct methods
.method public constructor <init>(Ls22$a;Lnl3;)V
    .locals 0

    iput-object p2, p0, Lyads/f90;->b:Lnl3;

    invoke-direct {p0, p1}, Lb0;-><init>(Lo22$b;)V

    return-void
.end method


# virtual methods
.method public final handleException(Lo22;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lyads/f90;->b:Lnl3;

    invoke-interface {p0, p2}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
