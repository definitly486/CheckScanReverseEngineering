.class public final Lyads/nv4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/sv4;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/sv4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/nv4;->c:Lyads/sv4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lyads/nv4;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/nv4;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/nv4;->d:I

    iget-object p1, p0, Lyads/nv4;->c:Lyads/sv4;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lyads/sv4;->a(JLf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
