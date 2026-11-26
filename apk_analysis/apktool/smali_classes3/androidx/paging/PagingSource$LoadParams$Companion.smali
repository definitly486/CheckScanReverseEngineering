.class public final Landroidx/paging/PagingSource$LoadParams$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PagingSource$LoadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PagingSource$LoadParams$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/paging/PagingSource$LoadParams$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroidx/paging/LoadType;Ljava/lang/Object;IZ)Landroidx/paging/PagingSource$LoadParams;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Key:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/paging/LoadType;",
            "TKey;IZ)",
            "Landroidx/paging/PagingSource$LoadParams<",
            "TKey;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/paging/PagingSource$LoadParams$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_4

    const/4 p1, 0x2

    const/4 v0, 0x0

    if-eq p0, p1, :cond_2

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Landroidx/paging/PagingSource$LoadParams$Append;

    invoke-direct {p0, p2, p3, p4}, Landroidx/paging/PagingSource$LoadParams$Append;-><init>(Ljava/lang/Object;IZ)V

    return-object p0

    :cond_0
    const-string p0, "key cannot be null for append"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lme0;->e()V

    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    new-instance p0, Landroidx/paging/PagingSource$LoadParams$Prepend;

    invoke-direct {p0, p2, p3, p4}, Landroidx/paging/PagingSource$LoadParams$Prepend;-><init>(Ljava/lang/Object;IZ)V

    return-object p0

    :cond_3
    const-string p0, "key cannot be null for prepend"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return-object v0

    :cond_4
    new-instance p0, Landroidx/paging/PagingSource$LoadParams$Refresh;

    invoke-direct {p0, p2, p3, p4}, Landroidx/paging/PagingSource$LoadParams$Refresh;-><init>(Ljava/lang/Object;IZ)V

    return-object p0
.end method
