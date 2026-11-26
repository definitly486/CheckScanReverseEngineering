.class public final Lgt2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ltd4$a;

.field public static final g:Ltd4$a;


# instance fields
.field public a:Lcl;

.field public b:Ldl;

.field public c:Ldl;

.field public d:Ldl;

.field public e:Ldl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltd4$a;->a([Ljava/lang/String;)Ltd4$a;

    move-result-object v0

    sput-object v0, Lgt2;->f:Ltd4$a;

    const-string v0, "nm"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltd4$a;->a([Ljava/lang/String;)Ltd4$a;

    move-result-object v0

    sput-object v0, Lgt2;->g:Ltd4$a;

    return-void
.end method
