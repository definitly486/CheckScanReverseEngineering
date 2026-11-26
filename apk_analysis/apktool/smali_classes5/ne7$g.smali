.class public final Lne7$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Lb18;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb18;

    invoke-direct {v0}, Lb18;-><init>()V

    sput-object v0, Lne7$g;->a:Lb18;

    return-void
.end method
