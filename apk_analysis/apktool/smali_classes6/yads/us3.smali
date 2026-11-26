.class public final Lyads/us3;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/vs3;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/vs3;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/us3;->c:Lyads/vs3;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/us3;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/us3;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/us3;->d:I

    iget-object p1, p0, Lyads/us3;->c:Lyads/vs3;

    invoke-virtual {p1, p0}, Lyads/vs3;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
