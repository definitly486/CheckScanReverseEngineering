.class public final Lyads/cz4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/fz4;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/fz4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/cz4;->c:Lyads/fz4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iput-object p1, p0, Lyads/cz4;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/cz4;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/cz4;->d:I

    iget-object v0, p0, Lyads/cz4;->c:Lyads/fz4;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lyads/fz4;->a(Lyads/fz4;Landroid/content/Context;Lyads/n70;Lyads/sl5;Ljava/util/List;JLf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
