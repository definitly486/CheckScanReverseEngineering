.class public final Lwp6$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwp6$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# static fields
.field public static final a:Lwp6$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwp6$g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lwp6$g;->a:Lwp6$g;

    sget-object v0, Lwp6$h$a;->COMMON:Lwp6$h$a;

    return-void
.end method


# virtual methods
.method public final a()Lpz3;
    .locals 1

    new-instance p0, Ljava/lang/Exception;

    const-string v0, "Casting of NotSupportedBlock in cards promo is not possible"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
