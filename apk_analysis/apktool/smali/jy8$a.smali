.class public final Ljy8$a;
.super Ljy8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Ljy8$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljy8$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljy8$a;->a:Ljy8$a;

    return-void
.end method
