.class public final Lkd$a$j$i;
.super Lkd$a$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkd$a$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# static fields
.field public static final e:Lkd$a$j$i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkd$a$j$i;

    const-string v1, "StartInteraction"

    invoke-direct {v0, v1}, Lkd$a$j;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkd$a$j$i;->e:Lkd$a$j$i;

    return-void
.end method
