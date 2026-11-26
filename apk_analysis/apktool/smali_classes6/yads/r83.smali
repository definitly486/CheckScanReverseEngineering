.class public final Lyads/r83;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/s83;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/s83;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/r83;->c:Lyads/s83;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/r83;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/r83;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/r83;->d:I

    iget-object p1, p0, Lyads/r83;->c:Lyads/s83;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lyads/s83;->a(Landroid/content/Context;Lyads/dt;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
