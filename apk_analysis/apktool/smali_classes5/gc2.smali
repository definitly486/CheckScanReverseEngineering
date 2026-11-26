.class public final Lgc2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lec2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lgc2$a;->c:Lgc2$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lme4;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lec2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lec2;-><init>(I)V

    sput-object v0, Lgc2;->a:Lec2;

    return-void
.end method
