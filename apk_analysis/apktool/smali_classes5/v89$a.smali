.class public final Lv89$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv89;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lv89$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv89$a;

    invoke-direct {v0}, Lv89$a;-><init>()V

    sput-object v0, Lv89$a;->a:Lv89$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Ldf4;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf4<",
            "Lv89;",
            ">;"
        }
    .end annotation

    new-instance p0, Laj7;

    const-class v0, Lv89;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    const-class v1, Lv89$b;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    const-class v2, Lv89$c;

    invoke-static {v2}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v2

    const-class v3, Lv89$d;

    invoke-static {v3}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v3

    const-class v4, Lv89$f;

    invoke-static {v4}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v4

    const-class v5, Lv89$g;

    invoke-static {v5}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v5

    const/4 v6, 0x5

    new-array v7, v6, [Lne4;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    aput-object v3, v7, v2

    const/4 v3, 0x3

    aput-object v4, v7, v3

    const/4 v4, 0x4

    aput-object v5, v7, v4

    new-instance v5, Lrq5;

    sget-object v9, Lv89$g;->INSTANCE:Lv89$g;

    new-array v10, v8, [Ljava/lang/annotation/Annotation;

    const-string v11, "com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult.Unknown"

    invoke-direct {v5, v11, v9, v10}, Lrq5;-><init>(Ljava/lang/String;Ljava/io/Serializable;[Ljava/lang/annotation/Annotation;)V

    new-array v6, v6, [Ldf4;

    sget-object v9, Lv89$b$a;->a:Lv89$b$a;

    aput-object v9, v6, v8

    sget-object v9, Lv89$c$a;->a:Lv89$c$a;

    aput-object v9, v6, v1

    sget-object v1, Lv89$d$a;->a:Lv89$d$a;

    aput-object v1, v6, v2

    sget-object v1, Lv89$f$a;->a:Lv89$f$a;

    aput-object v1, v6, v3

    aput-object v5, v6, v4

    new-array v1, v8, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.warefly.checkscan.presentation.upridWeb.model.UpridWebDialogResult"

    invoke-direct {p0, v2, v0, v7, v6}, Laj7;-><init>(Ljava/lang/String;Lzk1;[Lne4;[Ldf4;)V

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Laj7;->b:Ljava/util/List;

    return-object p0
.end method
