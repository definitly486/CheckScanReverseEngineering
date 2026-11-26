.class public final Lyads/ok6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/Comparator;


# instance fields
.field public final a:Lyads/pk6;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo4a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyads/ok6;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lyads/pk6;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ok6;->a:Lyads/pk6;

    iput p2, p0, Lyads/ok6;->b:I

    return-void
.end method

.method public static synthetic a(Lyads/ok6;Lyads/ok6;)I
    .locals 0

    iget-object p0, p0, Lyads/ok6;->a:Lyads/pk6;

    iget p0, p0, Lyads/pk6;->b:I

    iget-object p1, p1, Lyads/ok6;->a:Lyads/pk6;

    iget p1, p1, Lyads/pk6;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
