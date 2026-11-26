.class public final Lm59$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loc5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm59;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Loc5<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lm59$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm59$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm59$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm59$a;->a:Lm59$a;

    return-void
.end method


# virtual methods
.method public final d(Lif5;)Lnc5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lif5;",
            ")",
            "Lnc5<",
            "TModel;TModel;>;"
        }
    .end annotation

    sget-object p0, Lm59;->a:Lm59;

    return-object p0
.end method
