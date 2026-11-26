.class public final Ly91$i;
.super Ly91$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final c:Ly91$i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ly91$i;

    const-string v1, "CharMatcher.javaIsoControl()"

    invoke-direct {v0, v1}, Ly91$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Ly91$i;->c:Ly91$i;

    return-void
.end method


# virtual methods
.method public final c(C)Z
    .locals 0

    const/16 p0, 0x1f

    if-le p1, p0, :cond_1

    const/16 p0, 0x7f

    if-lt p1, p0, :cond_0

    const/16 p0, 0x9f

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
