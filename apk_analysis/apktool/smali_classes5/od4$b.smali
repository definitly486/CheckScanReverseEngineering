.class public final Lod4$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lod4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lod4$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lod4$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lod4$b;->a:Lod4$b;

    return-void
.end method
