.class public abstract Lyads/s40;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/q40;

.field public static final b:Lyads/r40;

.field public static final c:Lyads/r40;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/q40;

    invoke-direct {v0}, Lyads/q40;-><init>()V

    sput-object v0, Lyads/s40;->a:Lyads/q40;

    new-instance v0, Lyads/r40;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lyads/r40;-><init>(I)V

    sput-object v0, Lyads/s40;->b:Lyads/r40;

    new-instance v0, Lyads/r40;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lyads/r40;-><init>(I)V

    sput-object v0, Lyads/s40;->c:Lyads/r40;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(II)Lyads/s40;
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lyads/s40;
.end method

.method public abstract a(ZZ)Lyads/s40;
.end method

.method public abstract b(ZZ)Lyads/s40;
.end method
