.class public final enum Lyads/ix4;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic c:[Lyads/ix4;

.field public static final synthetic d:Lg03;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lyads/ix4;

    const-string v1, "io.flutter.embedding.android.FlutterActivity"

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Flutter"

    invoke-direct {v0, v2, v3, v1}, Lyads/ix4;-><init>(ILjava/lang/String;Ljava/util/List;)V

    new-instance v1, Lyads/ix4;

    const-string v2, "com.facebook.react.bridge.ReactContext"

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "ReactNative"

    invoke-direct {v1, v3, v4, v2}, Lyads/ix4;-><init>(ILjava/lang/String;Ljava/util/List;)V

    new-instance v2, Lyads/ix4;

    const-string v3, "com.unity3d.player.UnityPlayer"

    const-string v4, "com.unity3d.player.UnityPlayerActivity"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "Unity"

    invoke-direct {v2, v4, v5, v3}, Lyads/ix4;-><init>(ILjava/lang/String;Ljava/util/List;)V

    filled-new-array {v0, v1, v2}, [Lyads/ix4;

    move-result-object v0

    sput-object v0, Lyads/ix4;->c:[Lyads/ix4;

    new-instance v1, Li03;

    invoke-direct {v1, v0}, Li03;-><init>([Ljava/lang/Enum;)V

    sput-object v1, Lyads/ix4;->d:Lg03;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lyads/ix4;->b:Ljava/util/List;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyads/ix4;
    .locals 1

    const-class v0, Lyads/ix4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyads/ix4;

    return-object p0
.end method

.method public static values()[Lyads/ix4;
    .locals 1

    sget-object v0, Lyads/ix4;->c:[Lyads/ix4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyads/ix4;

    return-object v0
.end method
