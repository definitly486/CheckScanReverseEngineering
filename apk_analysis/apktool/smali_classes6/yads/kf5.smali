.class public final Lyads/kf5;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lyads/t5;

.field public d:Lyads/s5;

.field public e:Lmb4;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lyads/rf5;

.field public h:I


# direct methods
.method public constructor <init>(Lyads/rf5;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/kf5;->g:Lyads/rf5;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/kf5;->f:Ljava/lang/Object;

    iget p1, p0, Lyads/kf5;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/kf5;->h:I

    iget-object p1, p0, Lyads/kf5;->g:Lyads/rf5;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lyads/rf5;->a(Lyads/kg3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
