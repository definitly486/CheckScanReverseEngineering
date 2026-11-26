.class public final Lyads/qk6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:I

.field public final c:Lyads/mk6;


# direct methods
.method public constructor <init>(ILyads/mk6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyads/qk6;->b:I

    iput-object p2, p0, Lyads/qk6;->c:Lyads/mk6;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyads/qk6;

    iget p0, p0, Lyads/qk6;->b:I

    iget p1, p1, Lyads/qk6;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
