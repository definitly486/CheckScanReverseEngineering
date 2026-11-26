.class public final Lyads/kf0;
.super Lyads/mf0;
.source "SourceFile"


# static fields
.field public static final b:Lyads/kf0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/kf0;

    invoke-direct {v0}, Lyads/kf0;-><init>()V

    sput-object v0, Lyads/kf0;->b:Lyads/kf0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Debug Panel"

    invoke-direct {p0, v0}, Lyads/mf0;-><init>(Ljava/lang/String;)V

    return-void
.end method
