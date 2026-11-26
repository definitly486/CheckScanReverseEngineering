.class public final Landroidx/paging/DataSource$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/DataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final initialLoadSize:I

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final pageSize:I

.field private final placeholdersEnabled:Z

.field private final type:Landroidx/paging/LoadType;


# direct methods
.method public constructor <init>(Landroidx/paging/LoadType;Ljava/lang/Object;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/LoadType;",
            "TK;IZI)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/paging/DataSource$Params;->type:Landroidx/paging/LoadType;

    iput-object p2, p0, Landroidx/paging/DataSource$Params;->key:Ljava/lang/Object;

    iput p3, p0, Landroidx/paging/DataSource$Params;->initialLoadSize:I

    iput-boolean p4, p0, Landroidx/paging/DataSource$Params;->placeholdersEnabled:Z

    iput p5, p0, Landroidx/paging/DataSource$Params;->pageSize:I

    sget-object p0, Landroidx/paging/LoadType;->REFRESH:Landroidx/paging/LoadType;

    if-eq p1, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Key must be non-null for prepend/append"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getInitialLoadSize()I
    .locals 0

    iget p0, p0, Landroidx/paging/DataSource$Params;->initialLoadSize:I

    return p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/paging/DataSource$Params;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getPageSize()I
    .locals 0

    iget p0, p0, Landroidx/paging/DataSource$Params;->pageSize:I

    return p0
.end method

.method public final getPlaceholdersEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/paging/DataSource$Params;->placeholdersEnabled:Z

    return p0
.end method

.method public final getType$paging_common()Landroidx/paging/LoadType;
    .locals 0

    iget-object p0, p0, Landroidx/paging/DataSource$Params;->type:Landroidx/paging/LoadType;

    return-object p0
.end method
