.class public Lky1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lky1$b;,
        Lky1$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:Lky1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lky1;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lky1;->a:Ljava/util/logging/Logger;

    new-instance v0, Lky1;

    invoke-direct {v0}, Lky1;-><init>()V

    sput-object v0, Lky1;->b:Lky1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lky1;
    .locals 1

    sget-object v0, Lky1$a;->a:Lky1$b;

    invoke-virtual {v0}, Lky1$b;->a()Lky1;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lky1;->b:Lky1;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lky1;
    .locals 1

    sget-object v0, Lky1$a;->a:Lky1$b;

    invoke-virtual {v0, p0}, Lky1$b;->c(Lky1;)Lky1;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lky1;->b:Lky1;

    :cond_0
    return-object p0
.end method

.method public final c(Lky1;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lky1$a;->a:Lky1$b;

    invoke-virtual {v0, p0, p1}, Lky1$b;->b(Lky1;Lky1;)V

    return-void

    :cond_0
    const-string p0, "toAttach"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    return-void
.end method
