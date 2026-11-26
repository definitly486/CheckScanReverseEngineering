.class public final synthetic Lyads/e93;
.super Lk8;
.source "SourceFile"

# interfaces
.implements Lll3;


# static fields
.field public static final b:Lyads/e93;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/e93;

    invoke-direct {v0}, Lyads/e93;-><init>()V

    sput-object v0, Lyads/e93;->b:Lyads/e93;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "<init>(Lcom/yandex/div/histogram/HistogramFilter;Lcom/yandex/div/histogram/HistogramFilter;Lcom/yandex/div/histogram/HistogramFilter;Lcom/yandex/div/histogram/HistogramFilter;)V"

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-class v2, Lyads/f65;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lk8;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lyads/f65;

    invoke-direct {p0}, Lyads/f65;-><init>()V

    return-object p0
.end method
