.class final Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final key:Ljava/lang/String;

.field public final next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field public final value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lorg/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 195
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    .line 196
    iput-object p3, p0, Lorg/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lorg/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 197
    return-void
.end method
