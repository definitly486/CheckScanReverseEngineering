.class public final Lp59;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls19;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls19<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Lp59;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp59;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lp59;->b:Lp59;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/content/Context;Le47;II)Le47;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le47<",
            "TT;>;II)",
            "Le47<",
            "TT;>;"
        }
    .end annotation

    return-object p2
.end method
