.class public final Ly13;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ly13$a;

.field public static final b:Ly13$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly13$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly13;->a:Ly13$a;

    new-instance v0, Ly13$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly13;->b:Ly13$b;

    return-void
.end method
