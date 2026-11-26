.class public final Lyads/l36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mt5;


# static fields
.field public static final c:Lyads/l36;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/l36;

    invoke-direct {v0}, Lyads/l36;-><init>()V

    sput-object v0, Lyads/l36;->c:Lyads/l36;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lyads/l36;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lyads/sb0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lyads/l36;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 12
    const/4 p0, 0x1

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 11
    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)J
    .locals 0

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lyads/l36;->b:Ljava/util/List;

    return-object p0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
