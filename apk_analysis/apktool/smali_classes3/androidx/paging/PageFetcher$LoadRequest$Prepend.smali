.class public final Landroidx/paging/PageFetcher$LoadRequest$Prepend;
.super Landroidx/paging/PageFetcher$LoadRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/PageFetcher$LoadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Prepend"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/paging/PageFetcher$LoadRequest$Prepend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/paging/PageFetcher$LoadRequest$Prepend;

    invoke-direct {v0}, Landroidx/paging/PageFetcher$LoadRequest$Prepend;-><init>()V

    sput-object v0, Landroidx/paging/PageFetcher$LoadRequest$Prepend;->INSTANCE:Landroidx/paging/PageFetcher$LoadRequest$Prepend;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/paging/PageFetcher$LoadRequest;-><init>(Landroidx/paging/LoadType;Ljh2;)V

    return-void
.end method
