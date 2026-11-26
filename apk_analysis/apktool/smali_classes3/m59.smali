.class public final Lm59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnc5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm59$b;,
        Lm59$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnc5<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lm59;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm59<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm59;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm59;->a:Lm59;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILxz5;)Lnc5$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lxz5;",
            ")",
            "Lnc5$a<",
            "TModel;>;"
        }
    .end annotation

    new-instance p0, Lnc5$a;

    new-instance p2, Loq5;

    invoke-direct {p2, p1}, Loq5;-><init>(Ljava/lang/Object;)V

    new-instance p3, Lm59$b;

    invoke-direct {p3, p1}, Lm59$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lnc5$a;-><init>(Lkf4;Ls82;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
