.class public final Lmp0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "\u0411\u0438\u043b\u0435\u0442\u044b"

    const-string v6, "\u041c\u0430\u0433\u043d\u0438\u0442"

    const-string v0, "\u0410\u043b\u0438\u044d\u043a\u0441\u043f\u0440\u0435\u0441\u0441"

    const-string v1, "\u0410\u043f\u0442\u0435\u043a\u0430"

    const-string v2, "\u041c\u0435\u0433\u0430\u043c\u0430\u0440\u043a\u0435\u0442"

    const-string v3, "\u0421\u043f\u043e\u0440\u0442\u043c\u0430\u0441\u0442\u0435\u0440"

    const-string v4, "\u041f\u0440\u043e\u0434\u0443\u043a\u0442\u044b"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lmp0;->a:Ljava/util/List;

    return-void
.end method
