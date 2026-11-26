.class public final Landroidx/compose/ui/platform/ClipMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final clipDescription:Landroid/content/ClipDescription;


# direct methods
.method public constructor <init>(Landroid/content/ClipDescription;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/ClipMetadata;->clipDescription:Landroid/content/ClipDescription;

    return-void
.end method


# virtual methods
.method public final getClipDescription()Landroid/content/ClipDescription;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ClipMetadata;->clipDescription:Landroid/content/ClipDescription;

    return-object p0
.end method
