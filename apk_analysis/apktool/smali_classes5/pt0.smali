.class public final Lpt0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldq8;

.field public final b:I

.field public final c:Z

.field public final d:Lpt0;

.field public final e:Lnl2;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Ldq8;ILpt0;Lnl2;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpt0;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lpt0;->g:Z

    iput-object p1, p0, Lpt0;->a:Ldq8;

    iput p2, p0, Lpt0;->b:I

    iput-boolean p5, p0, Lpt0;->c:Z

    iput-object p3, p0, Lpt0;->d:Lpt0;

    iput-object p4, p0, Lpt0;->e:Lnl2;

    return-void
.end method
