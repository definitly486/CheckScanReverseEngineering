.class public final Landroidx/paging/LoadState$NotLoading;
.super Landroidx/paging/LoadState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/LoadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotLoading"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/LoadState$NotLoading$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/paging/LoadState$NotLoading$Companion;

.field private static final Complete:Landroidx/paging/LoadState$NotLoading;

.field private static final Incomplete:Landroidx/paging/LoadState$NotLoading;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/LoadState$NotLoading$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/LoadState$NotLoading$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/paging/LoadState$NotLoading;->Companion:Landroidx/paging/LoadState$NotLoading$Companion;

    new-instance v0, Landroidx/paging/LoadState$NotLoading;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    sput-object v0, Landroidx/paging/LoadState$NotLoading;->Complete:Landroidx/paging/LoadState$NotLoading;

    new-instance v0, Landroidx/paging/LoadState$NotLoading;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/LoadState$NotLoading;-><init>(Z)V

    sput-object v0, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/paging/LoadState;-><init>(ZLjh2;)V

    return-void
.end method

.method public static final synthetic access$getComplete$cp()Landroidx/paging/LoadState$NotLoading;
    .locals 1

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->Complete:Landroidx/paging/LoadState$NotLoading;

    return-object v0
.end method

.method public static final synthetic access$getIncomplete$cp()Landroidx/paging/LoadState$NotLoading;
    .locals 1

    sget-object v0, Landroidx/paging/LoadState$NotLoading;->Incomplete:Landroidx/paging/LoadState$NotLoading;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/paging/LoadState$NotLoading;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    check-cast p1, Landroidx/paging/LoadState$NotLoading;

    invoke-virtual {p1}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotLoading(endOfPaginationReached="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/paging/LoadState;->getEndOfPaginationReached()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
