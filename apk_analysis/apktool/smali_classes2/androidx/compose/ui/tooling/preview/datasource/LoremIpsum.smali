.class public Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/tooling/preview/PreviewParameterProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/compose/ui/tooling/preview/PreviewParameterProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final words:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x1f4

    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->words:I

    return-void
.end method

.method public static synthetic a(Lp07;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->generateLoremIpsum$lambda$0(Lp07;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final generateLoremIpsum(I)Ljava/lang/String;
    .locals 3

    new-instance p0, Lp07;

    invoke-direct {p0}, Lp07;-><init>()V

    invoke-static {}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsumKt;->access$getLOREM_IPSUM_SOURCE$p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljw4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ljw4;-><init>(Ljava/lang/Object;II)V

    new-instance p0, Lep3;

    new-instance v0, Lv00;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lv00;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v1, v0}, Lep3;-><init>(Lll3;Lnl3;)V

    new-instance v0, Llx1;

    invoke-direct {v0, p0}, Llx1;-><init>(Lzo7;)V

    invoke-static {v0, p1}, Ljp7;->p(Lzo7;I)Lzo7;

    move-result-object p0

    const/4 p1, 0x0

    const/16 v0, 0x3e

    const-string v1, " "

    invoke-static {p0, v1, p1, v0}, Ljp7;->m(Lzo7;Ljava/lang/String;Lmg6;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final generateLoremIpsum$lambda$0(Lp07;I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsumKt;->access$getLOREM_IPSUM_SOURCE$p()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lp07;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lp07;->b:I

    rem-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getValues()Lzo7;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzo7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->words:I

    invoke-direct {p0, v0}, Landroidx/compose/ui/tooling/preview/datasource/LoremIpsum;->generateLoremIpsum(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lxr;

    invoke-direct {v0, p0}, Lxr;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
