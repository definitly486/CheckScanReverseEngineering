.class public abstract Lyads/z6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/y6;

.field public static final b:Lyads/y6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/y6;

    const-string v1, "Fullscreen ad was already presented. Fullscreen can be presented just once."

    invoke-direct {v0, v1}, Lyads/y6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyads/z6;->a:Lyads/y6;

    new-instance v0, Lyads/y6;

    const-string v1, "Fullscreen ad was already cleared. Fullscreen can\'t be shown."

    invoke-direct {v0, v1}, Lyads/y6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lyads/z6;->b:Lyads/y6;

    return-void
.end method
