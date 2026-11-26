.class public final Lyads/j23;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lyads/k23;

.field public e:I


# direct methods
.method public constructor <init>(Lyads/k23;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/j23;->d:Lyads/k23;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/j23;->c:Ljava/lang/Object;

    iget p1, p0, Lyads/j23;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/j23;->e:I

    iget-object p1, p0, Lyads/j23;->d:Lyads/k23;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lyads/k23;->a(Ljava/lang/String;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
