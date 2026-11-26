.class public final Landroidx/paging/PageFetcher$RefreshType$Initial;
.super Landroidx/paging/PageFetcher$RefreshType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageFetcher$RefreshType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Initial"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/paging/PageFetcher$RefreshType$Initial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/paging/PageFetcher$RefreshType$Initial;

    invoke-direct {v0}, Landroidx/paging/PageFetcher$RefreshType$Initial;-><init>()V

    sput-object v0, Landroidx/paging/PageFetcher$RefreshType$Initial;->INSTANCE:Landroidx/paging/PageFetcher$RefreshType$Initial;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/paging/PageFetcher$RefreshType;-><init>(Ljh2;)V

    return-void
.end method
