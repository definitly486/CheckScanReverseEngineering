.class public final Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Api31Impl"
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;

    invoke-direct {v0}, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;-><init>()V

    sput-object v0, Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;->INSTANCE:Landroidx/camera/camera2/adapter/EncoderProfilesProviderAdapter$Api31Impl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAll(Ljava/lang/String;I)Landroid/media/EncoderProfiles;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->getAll(Ljava/lang/String;I)Landroid/media/EncoderProfiles;

    move-result-object p0

    return-object p0
.end method
