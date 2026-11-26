.class public final Ldq3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lqz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqz5<",
            "Lld2;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lqz5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqz5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    sget-object v1, Lld2;->DEFAULT:Lld2;

    invoke-static {v1, v0}, Lqz5;->a(Ljava/lang/Object;Ljava/lang/String;)Lqz5;

    move-result-object v0

    sput-object v0, Ldq3;->a:Lqz5;

    const-string v0, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lqz5;->a(Ljava/lang/Object;Ljava/lang/String;)Lqz5;

    move-result-object v0

    sput-object v0, Ldq3;->b:Lqz5;

    return-void
.end method
