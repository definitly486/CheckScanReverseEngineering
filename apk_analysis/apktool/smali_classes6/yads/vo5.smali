.class public final Lyads/vo5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lyads/wo5;

.field public final synthetic c:Lyads/xv5;

.field public final synthetic d:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/wo5;Lyads/xv5;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/vo5;->b:Lyads/wo5;

    iput-object p2, p0, Lyads/vo5;->c:Lyads/xv5;

    iput-object p3, p0, Lyads/vo5;->d:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    check-cast p1, Lyads/x72;

    iget-object v0, p0, Lyads/vo5;->b:Lyads/wo5;

    iget-object v1, p0, Lyads/vo5;->c:Lyads/xv5;

    iget v1, v1, Lyads/xv5;->j:I

    iget-object v2, p0, Lyads/vo5;->d:Lyads/fs2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1, v2}, Lyads/wo5;->a(ILyads/x72;Lyads/fs2;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p2, Lyads/x72;

    iget-object v0, p0, Lyads/vo5;->b:Lyads/wo5;

    iget-object v1, p0, Lyads/vo5;->c:Lyads/xv5;

    iget v1, v1, Lyads/xv5;->j:I

    iget-object p0, p0, Lyads/vo5;->d:Lyads/fs2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2, p0}, Lyads/wo5;->a(ILyads/x72;Lyads/fs2;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lpp1;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
