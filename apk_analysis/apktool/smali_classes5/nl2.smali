.class public final Lnl2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldq8;

.field public final b:C

.field public final c:Z

.field public final d:Z

.field public e:Lnl2;

.field public f:Lnl2;

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ldq8;CZZLnl2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lnl2;->g:I

    iput v0, p0, Lnl2;->h:I

    iput-object p1, p0, Lnl2;->a:Ldq8;

    iput-char p2, p0, Lnl2;->b:C

    iput-boolean p3, p0, Lnl2;->c:Z

    iput-boolean p4, p0, Lnl2;->d:Z

    iput-object p5, p0, Lnl2;->e:Lnl2;

    return-void
.end method
