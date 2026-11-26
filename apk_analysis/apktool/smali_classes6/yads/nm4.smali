.class public final Lyads/nm4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Lyads/ee4;

.field public d:Ljava/lang/Object;

.field public e:Lyads/s5;

.field public f:Ljava/util/Iterator;

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lyads/om4;

.field public i:I


# direct methods
.method public constructor <init>(Lyads/om4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/nm4;->h:Lyads/om4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/nm4;->g:Ljava/lang/Object;

    iget p1, p0, Lyads/nm4;->i:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/nm4;->i:I

    iget-object p1, p0, Lyads/nm4;->h:Lyads/om4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lyads/om4;->a(Landroid/content/Context;Lyads/ee4;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
