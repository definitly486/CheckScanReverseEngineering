.class public final Lyads/fb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/fb1;->b:Lyads/fs2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lyads/cp1;

    iget-object p1, p1, Lyads/cp1;->b:Lyads/as2;

    iget-object v0, p0, Lyads/fb1;->b:Lyads/fs2;

    invoke-virtual {p1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    check-cast p2, Lyads/cp1;

    iget-object p2, p2, Lyads/cp1;->b:Lyads/as2;

    iget-object p0, p0, Lyads/fb1;->b:Lyads/fs2;

    invoke-virtual {p2, p0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-static {p1, p0}, Lpp1;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0
.end method
