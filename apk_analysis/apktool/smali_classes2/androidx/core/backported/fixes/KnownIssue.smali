.class public final Landroidx/core/backported/fixes/KnownIssue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final alias:Ljava/lang/Integer;

.field private final id:J

.field private final manuallyTestedFingerprints:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final precondition:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/Integer;Ljava/util/Set;Lll3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    iput-object p3, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    iput-object p4, p0, Landroidx/core/backported/fixes/KnownIssue;->manuallyTestedFingerprints:Ljava/util/Set;

    iput-object p5, p0, Landroidx/core/backported/fixes/KnownIssue;->precondition:Lll3;

    const-string p3, "https://issuetracker.google.com/issues/"

    invoke-static {p1, p2, p3}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/backported/fixes/KnownIssue;->url:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/Integer;Ljava/util/Set;Lll3;ILjh2;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 26
    sget-object p4, Lox2;->b:Lox2;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 27
    new-instance p5, Lvu1;

    const/4 p4, 0x2

    invoke-direct {p5, p4}, Lvu1;-><init>(I)V

    :cond_1
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p5

    .line 28
    invoke-direct/range {v0 .. v5}, Landroidx/core/backported/fixes/KnownIssue;-><init>(JLjava/lang/Integer;Ljava/util/Set;Lll3;)V

    return-void
.end method

.method private static final _init_$lambda$0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Landroidx/core/backported/fixes/KnownIssue;->_init_$lambda$0()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/core/backported/fixes/KnownIssue;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    check-cast p1, Landroidx/core/backported/fixes/KnownIssue;

    iget-wide p0, p1, Landroidx/core/backported/fixes/KnownIssue;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getAlias$core_backported_fixes()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    return-wide v0
.end method

.method public final getManuallyTestedFingerprints$core_backported_fixes()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/core/backported/fixes/KnownIssue;->manuallyTestedFingerprints:Ljava/util/Set;

    return-object p0
.end method

.method public final getPrecondition$core_backported_fixes()Lll3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lll3<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/core/backported/fixes/KnownIssue;->precondition:Lll3;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/backported/fixes/KnownIssue;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    iget-wide v1, p0, Landroidx/core/backported/fixes/KnownIssue;->id:J

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " without alias"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " with alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/core/backported/fixes/KnownIssue;->alias:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
